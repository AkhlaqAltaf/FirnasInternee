import Card from 'react-bootstrap/Card';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import './cards.css';

function Cards() {
  return ( 
    <Container className="card-container">
      <Row>
        <Col xs={12} sm={6} md={3} className="mb-4">
          <Card className="card">
            <Card.Body>
              <Card.Title className="card-title">400 <h1 className="card-sub">M+</h1> </Card.Title>
              <Card.Text className="card-text">
                users supported worldwide
              </Card.Text>
            </Card.Body>
          </Card>
        </Col>
        <Col xs={12} sm={6} md={3} className="mb-4">
          <Card className="card">
            <Card.Body>
              <Card.Title className="card-title">25 <h1 className="card-sub">M+</h1></Card.Title>
              <Card.Text className="card-text">
                hours of human labor saved
              </Card.Text>
            </Card.Body>
          </Card>
        </Col>
        <Col xs={12} sm={6} md={3} className="mb-4">
          <Card className="card">
            <Card.Body>
              <Card.Title className="card-title">70 <h1 className="card-sub">%</h1></Card.Title>
              <Card.Text className="card-text">
                of conversations automatically resolved
              </Card.Text>
            </Card.Body>
          </Card>
        </Col>
        <Col xs={12} sm={6} md={3} className="mb-4">
          <Card className="card">
            <Card.Body>
              <Card.Title>8 <h1 className="card-sub">x</h1></Card.Title>
              <Card.Text className="card-text">
                cost reduction vs human agents
              </Card.Text>
            </Card.Body>
          </Card>
        </Col>
      </Row>
    </Container>
  );
}

export default Cards;
